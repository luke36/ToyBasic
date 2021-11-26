type op = OpPlus | OpMinus | OpMult | OpDiv

type expr = ExprVar of string | ExprInt of int | ExprOp of expr * op * expr

type cmp = CmpLt | CmpEq | CmpGt

type cmd =
  | ComPrint of int * expr
  | ComInput of int * string
  | ComAsgn of int * string * expr
  | ComIf of int * expr * cmp * expr * int
  | ComGoto of int * int
  | ComEnd of int
