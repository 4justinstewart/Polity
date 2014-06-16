module ApplicationHelper

  def get_legislation_title_and_city_identifier(json)
    legislation_info = []
    table_length = json["TaggedPDF-doc"]["Part"][1]["Table"].length
    if table_length > 1
      json["TaggedPDF-doc"]["Part"][1]["Table"][0]["TR"].each do |header_hash|
        if header_hash.has_key?("TD")
          legislation_info << header_hash["TD"]  # LEGISLATION INFO ON EACH ORDINANCE
        end
      end
    else
      json["TaggedPDF-doc"]["Part"][1]["Table"]["TR"].each do |header_hash|
        if header_hash.has_key?("TD")
          legislation_info << header_hash["TD"]  # LEGISLATION INFO ON EACH ORDINANCE
        end
      end
    end
    legislation_info
  end

  def get_vote_tallies(json_votes)

    json_votes.flatten[1]["Part"].each do |key, value|
    votes_on_pending_legislation = []
    if key["Sect"].class == Array    # DOCUMENT WITH MULTIPLE ORDINANCES TO VOTE ON
      key["Sect"].each do |hash|

        if hash != nil && hash.has_key?("Table")
          votes = []
          hash['Table'].flatten.length
          hash["Table"].each do |table_hash|
            table_hash.each do |key, value|
              value.each do |alderman_hash|
                if alderman_hash["TD"]
                  votes << alderman_hash["TD"]
                end
              end
            end
          end
          votes_on_pending_legislation << votes

        elsif hash != nil && hash.has_key?("Sect")   # DOCUMENT WITH A SINGLE ORDINANCE TO VOTE ON
          votes = []
          hash["Sect"][1].each do |table_hash|
            table_hash.flatten.each do |vote_table|
              if vote_table["TR"].class == Array
                vote_table["TR"].each do |alderman_hash|
                  if alderman_hash["TD"]
                    votes << alderman_hash["TD"]  # THIS IS WHERE THE VOTES ARE...
                  end
                end
              end
            end
          end
          votes_on_pending_legislation << votes
        end
      end
    end
    if !votes_on_pending_legislation.empty?
      return votes_on_pending_legislation
    end
  end

end

