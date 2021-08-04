open("DATA15.lst") do file
    answer = ""
    numbers = Int64[]
  
    for ln in eachline(file)
      for i in split(ln, " ")
        push!(numbers, parse(Int64, i))
      end
    end
  
    println("$(maximum(numbers)) $(minimum(numbers))")
  end