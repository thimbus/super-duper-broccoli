defmodule M do
    def main do
        name = IO.gets("What is your name?") |> String.trim
        IO.puts "Hello #{name}"
    end
    def main2 do
        data_stuff()
    end 

    def data_stuff do
        my_int = 123
        IO.puts "Integer #{is_integer(my_int)}"
    end 
    def main3 do
        data_stuff2()
    end 

    def data_stuff2 do
        my_float = 3.1459
        IO.puts "Float #{is_float(my_float)}"
    end 

    def main4 do
        data_stuff3()
    end 
    def data_stuff3 do
        my_str = "My Sentence"
        IO.puts "Length #{String.length(my_str)}"
        _longer_str = my_str <> " " <> "is longer"
        IO.puts "Equal : #{"Egg" === "egg"}"
    end  
end

