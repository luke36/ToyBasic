type token =
  | NUM of (int)
  | EQUAL
  | LPAREN
  | RPAREN
  | IF
  | THEN
  | LET
  | SEMISEMI
  | ID of (string)
  | INPUT
  | PRINT
  | END
  | PLUS
  | STAR
  | MINUS
  | SLASH
  | GOTO
  | LESS
  | GREATER

open Parsing;;
let _ = parse_error;;
# 2 "parser.mly"
  open Syntax
# 27 "parser.ml"
let yytransl_const = [|
  258 (* EQUAL *);
  259 (* LPAREN *);
  260 (* RPAREN *);
  261 (* IF *);
  262 (* THEN *);
  263 (* LET *);
  264 (* SEMISEMI *);
  266 (* INPUT *);
  267 (* PRINT *);
  268 (* END *);
  269 (* PLUS *);
  270 (* STAR *);
  271 (* MINUS *);
  272 (* SLASH *);
  273 (* GOTO *);
  274 (* LESS *);
  275 (* GREATER *);
    0|]

let yytransl_block = [|
  257 (* NUM *);
  265 (* ID *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\003\000\003\000\003\000\003\000\003\000\
\003\000\005\000\005\000\005\000\004\000\004\000\004\000\006\000\
\006\000\006\000\007\000\007\000\007\000\000\000"

let yylen = "\002\000\
\002\000\001\000\002\000\003\000\003\000\005\000\007\000\003\000\
\002\000\001\000\001\000\001\000\001\000\003\000\003\000\001\000\
\003\000\003\000\001\000\001\000\003\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\022\000\000\000\000\000\000\000\000\000\
\000\000\000\000\009\000\000\000\001\000\003\000\019\000\000\000\
\020\000\000\000\000\000\016\000\000\000\005\000\000\000\008\000\
\000\000\010\000\000\000\000\000\011\000\012\000\000\000\000\000\
\000\000\000\000\021\000\000\000\000\000\000\000\017\000\018\000\
\000\000\000\000\007\000"

let yydgoto = "\002\000\
\004\000\005\000\006\000\018\000\031\000\019\000\020\000"

let yysindex = "\031\000\
\040\255\000\000\051\255\000\000\044\255\040\255\056\255\055\255\
\057\255\056\255\000\000\052\255\000\000\000\000\000\000\056\255\
\000\000\036\255\012\255\000\000\058\255\000\000\054\255\000\000\
\253\254\000\000\056\255\056\255\000\000\000\000\056\255\056\255\
\056\255\056\255\000\000\012\255\012\255\254\254\000\000\000\000\
\054\255\069\255\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\063\255\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\001\255\000\000\000\000\000\000\007\255\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\021\255\029\255\000\000\000\000\000\000\
\042\255\000\000\000\000"

let yygindex = "\000\000\
\000\000\066\000\000\000\246\255\000\000\018\000\241\255"

let yytablesize = 72
let yytable = "\023\000\
\035\000\013\000\013\000\042\000\013\000\025\000\013\000\004\000\
\013\000\027\000\027\000\028\000\028\000\013\000\004\000\013\000\
\039\000\040\000\013\000\013\000\038\000\014\000\014\000\041\000\
\014\000\032\000\014\000\033\000\014\000\015\000\015\000\001\000\
\015\000\014\000\015\000\014\000\015\000\026\000\014\000\014\000\
\003\000\015\000\006\000\015\000\036\000\037\000\015\000\015\000\
\027\000\006\000\028\000\013\000\024\000\029\000\030\000\007\000\
\015\000\008\000\016\000\034\000\009\000\010\000\011\000\021\000\
\017\000\022\000\027\000\012\000\028\000\043\000\002\000\014\000"

let yycheck = "\010\000\
\004\001\001\001\002\001\006\001\004\001\016\000\006\001\001\001\
\008\001\013\001\013\001\015\001\015\001\013\001\008\001\015\001\
\032\000\033\000\018\001\019\001\031\000\001\001\002\001\034\000\
\004\001\014\001\006\001\016\001\008\001\001\001\002\001\001\000\
\004\001\013\001\006\001\015\001\008\001\002\001\018\001\019\001\
\001\001\013\001\001\001\015\001\027\000\028\000\018\001\019\001\
\013\001\008\001\015\001\008\001\001\001\018\001\019\001\005\001\
\001\001\007\001\003\001\002\001\010\001\011\001\012\001\009\001\
\009\001\009\001\013\001\017\001\015\001\001\001\008\001\006\000"

let yynames_const = "\
  EQUAL\000\
  LPAREN\000\
  RPAREN\000\
  IF\000\
  THEN\000\
  LET\000\
  SEMISEMI\000\
  INPUT\000\
  PRINT\000\
  END\000\
  PLUS\000\
  STAR\000\
  MINUS\000\
  SLASH\000\
  GOTO\000\
  LESS\000\
  GREATER\000\
  "

let yynames_block = "\
  NUM\000\
  ID\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'program) in
    Obj.repr(
# 31 "parser.mly"
      ( _1 )
# 148 "parser.ml"
               : Syntax.cmd list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'line) in
    Obj.repr(
# 35 "parser.mly"
      ( [_1] )
# 155 "parser.ml"
               : 'program))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'line) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'program) in
    Obj.repr(
# 37 "parser.mly"
      ( _1 :: _2 )
# 163 "parser.ml"
               : 'program))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 41 "parser.mly"
      ( ComPrint (_1, _3) )
# 171 "parser.ml"
               : 'line))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 43 "parser.mly"
      ( ComInput (_1, _3) )
# 179 "parser.ml"
               : 'line))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 45 "parser.mly"
      ( ComAsgn (_1, _3, _5) )
# 188 "parser.ml"
               : 'line))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 6 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 3 : 'cmp) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 47 "parser.mly"
      ( ComIf (_1, _3, _4, _5, _7) )
# 199 "parser.ml"
               : 'line))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 49 "parser.mly"
      ( ComGoto (_1, _3) )
# 207 "parser.ml"
               : 'line))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : int) in
    Obj.repr(
# 51 "parser.mly"
      ( ComEnd _1 )
# 214 "parser.ml"
               : 'line))
; (fun __caml_parser_env ->
    Obj.repr(
# 55 "parser.mly"
      ( CmpEq )
# 220 "parser.ml"
               : 'cmp))
; (fun __caml_parser_env ->
    Obj.repr(
# 57 "parser.mly"
      ( CmpLt )
# 226 "parser.ml"
               : 'cmp))
; (fun __caml_parser_env ->
    Obj.repr(
# 59 "parser.mly"
      ( CmpGt )
# 232 "parser.ml"
               : 'cmp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr_mid) in
    Obj.repr(
# 63 "parser.mly"
      ( _1 )
# 239 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr_mid) in
    Obj.repr(
# 65 "parser.mly"
      ( ExprOp (_1, OpPlus, _3) )
# 247 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr_mid) in
    Obj.repr(
# 67 "parser.mly"
      ( ExprOp (_1, OpMinus, _3) )
# 255 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr_bot) in
    Obj.repr(
# 71 "parser.mly"
      ( _1 )
# 262 "parser.ml"
               : 'expr_mid))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr_mid) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr_bot) in
    Obj.repr(
# 73 "parser.mly"
      ( ExprOp (_1, OpMult, _3) )
# 270 "parser.ml"
               : 'expr_mid))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr_mid) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr_bot) in
    Obj.repr(
# 75 "parser.mly"
      ( ExprOp (_1, OpDiv, _3) )
# 278 "parser.ml"
               : 'expr_mid))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 79 "parser.mly"
      ( ExprInt _1 )
# 285 "parser.ml"
               : 'expr_bot))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 81 "parser.mly"
      ( ExprVar _1 )
# 292 "parser.ml"
               : 'expr_bot))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 83 "parser.mly"
      ( _2 )
# 299 "parser.ml"
               : 'expr_bot))
(* Entry main *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let main (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Syntax.cmd list)
;;
