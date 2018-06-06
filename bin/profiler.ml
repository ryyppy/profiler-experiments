module Flow = Parser_flow

let program =
  "
const c = 1 + 1;

const add = (a) => a  +  c;
   "

let _ =
  let ast = Flow.parse_program false None program in
  match ast with
  | (_prog, _errs) -> print_endline "foo"

