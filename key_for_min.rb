# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(hash)
    return nil if hash.length == 0
    key_min = nil
    val_min = nil
    hash.each do |key, val|
        if val_min == nil
            key_min = key
            val_min = val
        elsif val < val_min
            key_min = key
            val_min = val
        end
    end
    return key_min
end

# hash = {:blake => 500, :ashley => 2, :adam => 1}
# key_for_min_value(hash)