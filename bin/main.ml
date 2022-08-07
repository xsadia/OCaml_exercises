let rec last l = 
  match l with  
| [] -> None
| [ t ] -> Some t
| _::t -> last t;;
 
(* 
  ocaml.org solution: 
  let rec last = function 
  | [] -> None
  | [ x ] -> Some x
  | _ :: t -> last t;;
*)

let rec last_two = function 
| [] -> None
| _::[] -> None
| [ x; y ] -> Some (x, y)
| _::t -> last_two t;;

(*
  ocaml.org solution:
  let rec last_two = function
    | [] | [_] -> None
    | [x; y] -> Some (x,y)
    | _ :: t -> last_two t;;   
*)

let rec len = function 
| [] -> 0
| _::t -> 1 + len t;;

(*
ocaml.org solution:
let length list =
    let rec aux n = function
      | [] -> n
      | _ :: t -> aux (n + 1) t
    in
    aux 0 list;;   
*)

(* let rec rev = function
| [] -> []
| h::t -> rev(List.append t [h]);;

type 'a node =
  | One of 'a 
  | Many of 'a node list


let rec flat = function
 | [One x] -> [x]
 |   *)