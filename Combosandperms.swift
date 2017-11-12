Combosandperms.swift

//                   n!
//              -----------     }   Calculate the number of combinations in without repetition
//               r!(n - r)!


//              (r + n - 1)!
//              -----------     }  Calculate the number of combinations with repetition option
//               r!(n - 1)!




//                   n!
//              ------------    } Calculate the number of permutations without repetition option
//                (n - r)!



//           n to the power of r  } Calculate the number of permutations with repetition




import Cocoa

var n = 10
var r = 4

func factorial(a: Int) -> Int {
    var fac = 1
    
    for num in 2...a {
        fac *= num
    }
    
    return fac
}

func factorial_redux(a: Int, b: Int) -> Int {
    let number = a - b
    var start = 1
    
    for n in number...a {
        start*=n
    }
    
    return start
}


var numberOfCombinationsWithoutRepetition = { (n: Int, r: Int) -> Int in
    
    let numer = n
    var numerFactorial = factorial(a: n)
    
    var rFactorial = factorial(a: r)
    var nMinusr = factorial(a: n-r)
    
    var denom = rFactorial * nMinusr
    
    var combos = numerFactorial / denom
    
    return combos

}

var numberOfCombinationsWithRepetition = {(n: Int, r: Int) -> Int in
    
   let numer = (n + r - 1)
    var numerFactorial = factorial(a: numer)
    
    var rFactorial = factorial(a: r)
    
    var nMinusOneFactorial = factorial(a: (n-1))
    

    var denom = rFactorial * nMinusOneFactorial
    
    var combos = numerFactorial / denom
    
    return combos
}

var numberOfPermutationsWithoutRepetition = { (n: Int, r: Int) -> Int in
    
    let numer = n
    var numerFactorial = factorial(a: n)
    
    var denom = n - r
    var denomFactorial = factorial(a: denom)
    
    var permutation = numerFactorial / denomFactorial
    
    return permutation
    
}

var numberOfPermutationWithRepetition = { (n: Double, r: Double) -> Int in
    
    var permutation = pow(n, r)

    return Int(permutation)
}




var combinatesWithoutRepetition = numberOfCombinationsWithoutRepetition(10, 4)
var combinates = numberOfCombinationsWithRepetition(10, 4)





var permutationWithoutRepetition = numberOfPermutationsWithoutRepetition(10, 4)
var permutationWithRepetition = numberOfPermutationWithRepetition(10, 4)









