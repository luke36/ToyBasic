open Syntax

exception Runtime_error of string

let calc_op x op y =
  match op with
  | OpMinus -> x - y
  | OpPlus -> x + y
  | OpMult -> x * y
  | OpDiv -> x / y

let calc_cmp x cmp y =
  match cmp with CmpLt -> x < y | CmpGt -> x > y | CmpEq -> x = y

let rec calc store expr =
  match expr with
  | ExprVar x -> (
      try List.assoc x store
      with Not_found -> raise (Runtime_error ("unbound variable " ^ x)))
  | ExprInt n -> n
  | ExprOp (expr1, op, expr2) ->
      let n1, n2 = (calc store expr1, calc store expr2) in
      calc_op n1 op n2

let find_command program label =
  let extract_label cmd =
    match cmd with
    | ComPrint (l, _) -> l
    | ComInput (l, _) -> l
    | ComAsgn (l, _, _) -> l
    | ComIf (l, _, _, _, _) -> l
    | ComGoto (l, _) -> l
    | ComEnd l -> l
  in
  let rec get_index check l =
    match l with
    | h :: t -> if check h then 0 else 1 + get_index check t
    | [] -> -1
  in
  let res = get_index (fun cmd -> extract_label cmd = label) program in
  if res < 0 then raise (Runtime_error ("no such label " ^ string_of_int label))
  else res

let rec eval1 program store index =
  match List.nth program index with
  | ComPrint (_, expr) ->
      let res = calc store expr in
      print_int res;
      print_newline ();
      eval1 program store (index + 1)
  | ComAsgn (_, v, expr) ->
      let res = calc store expr in
      let new_store = (v, res) :: store in
      eval1 program new_store (index + 1)
  | ComEnd _ -> ()
  | ComGoto (_, tar) -> eval1 program store (find_command program tar)
  | ComIf (_, expr1, cmp, expr2, tar) ->
      let n1 = calc store expr1 in
      let n2 = calc store expr2 in
      if calc_cmp n1 cmp n2 then eval1 program store (find_command program tar)
      else eval1 program store (index + 1)
  | ComInput (_, v) -> (
      match read_int () with
      | n ->
          let new_store = (v, n) :: store in
          eval1 program new_store (index + 1)
      | exception Failure _ -> raise (Runtime_error "input not a number"))
  | exception (Failure _) -> ()

let eval program = eval1 program [] 0
