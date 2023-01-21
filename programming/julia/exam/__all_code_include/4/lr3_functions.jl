module Functions

  export MatOutput, ReverseRowSort

  function MatOutput(mat)
    for i in range(1, size(mat)[1])
      println(mat[i])
    end
  end

  function ReverseRowSort(mat)
    for i in range(1, size(mat)[1])
      sort!(mat[i], rev=true)
    end
    return mat
  end

end
