def coin_counter(coins)
    hash = Hash.new
    if coins.class == Integer
        if coins >= 25 
            quarter = coins / 25
            hash.merge!(:quarters => quarter)
            coins -= quarter * 25
        end
        if coins >= 10 && coins < 20
            dime = coins / 10
            hash.merge!(:dime => dime)
            coins -= dime * 10
        elsif coins == 20
            dime = coins / 10
            hash.merge!(:dimes => dime)
            coins -= dime * 10
        end
        if coins >= 5
            nickle = coins / 5
            hash.merge!(:nickle => nickle)
            coins -= nickle * 5
        end
        if coins == 1
            pennys = coins / 1
            hash.merge!(:penny => pennys)
            coins -= pennys * 1
        elsif coins >= 1
            pennys = coins / 1
            hash.merge!(:pennys => pennys)
            coins -= pennys * 1
        end
    else 
        p "Please use Integers only."
        return "Please use Integers only."
    end

    return hash
end