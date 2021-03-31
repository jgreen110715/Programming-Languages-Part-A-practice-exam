val x = 50
val y = 3
val z = 10

fun maybeEven x = 
    if x = 0 
	then true
	else
	if x = 50
	then false
	else maybeOdd (x-1)

and maybeOdd y =
	if y = 0
	then false
	else 
	if y = 99
	then true
	else maybeEven (y-1)

(*The next 5 questions, including this one, are similar. Each question uses a slightly different definition of an 
ML signature DIGIT with the same structure definition Digit below. The Digit structure 
implements one-digit numbers that wrap around when you increment or decrement them.*)

structure Digit :> DIGIT =
struct
type digit = int
exception BadDigit
exception FailTest
fun make_digit i = if i < 0 orelse i > 9 then raise BadDigit else i
fun increment d = if d=9 then 0 else d+1
fun decrement d = if d=0 then 9 else d-1
val down_and_up = increment o decrement (* recall o is composition *)
fun test d = if down_and_up d = d then () else raise FailTest
end

(*In each problem, the definition of DIGIT matches the structure definition Digit, but different signatures 
let clients use the structure in different ways. You will answer the same question for each DIGIT definition by 
choosing the best description of what it lets clients do.In this question, the definition of \verb|DIGIT|DIGIT is:*)

(*Question 11*)

signature DIGIT = 
sig
type digit = int
val make_digit : int -> digit
val increment : digit -> digit
val decrement : digit -> digit
val down_and_up : digit -> digit
val test : digit -> unit
end

(* Multiple Choice answers -
- The type-checker prevents the client from calling Digit.test with the expression Digit.test e, for any expression e that evaluates to a value v.

- There are calls by clients to Digit.test that can type-check, but Digit.test 10 does not type-check.

- The client call Digit.test 10  type-checks and causes the Digit.FailTest exception to be raised.

- The client call Digit.test 10 type-checks and evaluates without raising an exception. 
*)

(*question 12*)

signature DIGIT = 
sig
type digit = int
val make_digit : int -> digit
val increment : digit -> digit
val decrement : digit -> digit
val down_and_up : digit -> digit
end

(* Multiple Choice answers -
- The type-checker prevents the client from calling Digit.test with the expression Digit.test e, for any expression e that evaluates to a value v.

- There are calls by clients to Digit.test that can type-check, but Digit.test 10 does not type-check.

- The client call Digit.test 10  type-checks and causes the Digit.FailTest exception to be raised.

- The client call Digit.test 10 type-checks and evaluates without raising an exception. 
*)

(*question 13*)

signature DIGIT = 
sig
type digit = int
val make_digit : int -> digit
val increment : digit -> digit
val decrement : digit -> digit
val test : digit -> unit
end

(* Multiple Choice answers -
- The type-checker prevents the client from calling Digit.test with the expression Digit.test e, for any expression e that evaluates to a value v.

- There are calls by clients to Digit.test that can type-check, but Digit.test 10 does not type-check.

- The client call Digit.test 10  type-checks and causes the Digit.FailTest exception to be raised.

- The client call Digit.test 10 type-checks and evaluates without raising an exception. 
*)

(*question 14*)

signature DIGIT = 
sig
type digit
val make_digit : int -> digit
val increment : digit -> digit
val decrement : digit -> digit
val down_and_up : digit -> digit
val test : digit -> unit
end

(* Multiple Choice answers -
- The type-checker prevents the client from calling Digit.test with the expression Digit.test e, for any expression e that evaluates to a value v.

- There are calls by clients to Digit.test that can type-check, but Digit.test 10 does not type-check.

- The client call Digit.test 10  type-checks and causes the Digit.FailTest exception to be raised.

- The client call Digit.test 10 type-checks and evaluates without raising an exception. 
*)

(*question 15*)

signature DIGIT = 
sig
type digit
val increment : digit -> digit
val decrement : digit -> digit
val down_and_up : digit -> digit
val test : digit -> unit
end

(* Multiple Choice answers -
- The type-checker prevents the client from calling Digit.test with the expression Digit.test e, for any expression e that evaluates to a value v.

- There are calls by clients to Digit.test that can type-check, but Digit.test 10 does not type-check.

- The client call Digit.test 10  type-checks and causes the Digit.FailTest exception to be raised.

- The client call Digit.test 10 type-checks and evaluates without raising an exception. 
*)