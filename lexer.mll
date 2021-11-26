{
  open Parser
  exception Eof
}

let digit = ['0' - '9']
let identifier = ['a' - 'z' 'A' - 'Z' '_']['a' - 'z' 'A' - 'Z' '_' '0' - '9']*

rule token = parse
  | [' ' '\t' '\n']       { token lexbuf }
  | digit+ as nums        { NUM (int_of_string nums) }
  | '*'                   { STAR }
  | '<'                   { LESS }
  | '>'                   { GREATER }
  | '/'                   { SLASH }
  | '('                   { LPAREN }
  | ')'                   { RPAREN }
  | '+'                   { PLUS }
  | '-'                   { MINUS }
  | "IF"                  { IF }
  | "THEN"                { THEN }
  | "LET"                 { LET }
  | ";;"                  { SEMISEMI }
  | '='                   { EQUAL }
  | "END"                 { END }
  | "INPUT"               { INPUT }
  | "PRINT"               { PRINT }
  | "GOTO"                { GOTO }
  | identifier as identif { ID identif }
  | eof                   { raise Eof }
