module Maybe =
struct
  type 'a t = 'a option
  let bind opt f =
    match opt with
    | None -> None
    | Some(x) -> Some(f x)
  let return x =
    Some(x)
  module Operator =
  struct
    let ( >>= ) = bind
    let ( >> ) m f = bind m (fun _ -> f ())
  end
end

let maybe_callback opt x =
  match opt with
  | None -> x
  | Some(f) -> f x; x

let maybe_apply opt f x =
  match opt with
  | None -> x
  | Some(v) -> f x v; x