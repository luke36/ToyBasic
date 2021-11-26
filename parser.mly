%{
  open Syntax
%}

%token <int> NUM
%token EQUAL
%token LPAREN
%token RPAREN
%token IF
%token THEN
%token LET
%token SEMISEMI
%token <string> ID
%token INPUT
%token PRINT
%token END
%token PLUS
%token STAR
%token MINUS
%token SLASH
%token GOTO
%token LESS
%token GREATER

%start main
%type <Syntax.cmd list> main

%%
main:
  | program SEMISEMI
      { $1 }
;
program:
  | line
      { [$1] }
  | line program
      { $1 :: $2 }
;
line:
  | NUM PRINT expr
      { ComPrint ($1, $3) }
  | NUM INPUT ID
      { ComInput ($1, $3) }
  | NUM LET ID EQUAL expr
      { ComAsgn ($1, $3, $5) }
  | NUM IF expr cmp expr THEN NUM
      { ComIf ($1, $3, $4, $5, $7) }
  | NUM GOTO NUM
      { ComGoto ($1, $3) }
  | NUM END
      { ComEnd $1 }
;
cmp:
  | EQUAL
      { CmpEq }
  | LESS
      { CmpLt }
  | GREATER
      { CmpGt }
;
expr:
  | expr_mid
      { $1 }
  | expr PLUS expr_mid
      { ExprOp ($1, OpPlus, $3) }
  | expr MINUS expr_mid
      { ExprOp ($1, OpMinus, $3) }
;
expr_mid:
  | expr_bot
      { $1 }
  | expr_mid STAR expr_bot
      { ExprOp ($1, OpMult, $3) }
  | expr_mid SLASH expr_bot
      { ExprOp ($1, OpDiv, $3) }
;
expr_bot:
  | NUM
      { ExprInt $1 }
  | ID
      { ExprVar $1 }
  | LPAREN expr RPAREN
      { $2 }
;
%%