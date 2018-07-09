defmodule Functions3 do
    @remfb = fn x -> @fizzbuzz.(rem(x, 3), rem(x, 5), x) end

    # remfb.(10) ==> Buzz
    # remfb.(11) ==> 11
    # remfb.(12) ==> Fizz
    # remfb.(13) ==> 13
    # remfb.(14) ==> 14
    # remfb.(15) ==> FizzBuzz
    # remfb.(16) ==> 16
end