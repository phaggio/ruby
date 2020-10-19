def all_words_capitalized?(words)
  words.all? { |word| word.capitalize == word }
end


def no_valid_url?(urls)
  valid_domains = [".com", ".net", ".io", ".org"]

  ## return true if none of the URLs check return true
  urls.none? do |url|
    # return true if url ends with any of the valid_domains
    valid_domains.any? { |domain| url.end_with?(domain) }
  end
end

def any_passing_students?(students)
  students.any? do |student|
    (student[:grades].sum(0.0) / student[:grades].length) >= 75 
  end
end