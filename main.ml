open Eval
open Parser
open Lexer

let () =
  let lexbuf = Lexing.from_channel stdin in
  while true do
    print_string "> ";
    flush stdout;
    (try
       let prog = main token lexbuf in
       eval prog
     with
    | Eof ->
        print_newline ();
        print_endline "exit.";
        exit 0
    | Runtime_error msg ->
        print_endline msg
    | _ ->
        print_endline "syntax error.";
        Lexing.flush_input lexbuf);
    flush stdout
  done
