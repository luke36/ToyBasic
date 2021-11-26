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

val main :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Syntax.cmd list
