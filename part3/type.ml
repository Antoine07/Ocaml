type 'a tree =
    | Node of 'a tree * 'a * 'a tree
    | Empty;;


let rec insert_node t e =
    match t with
        | Empty -> Node (Empty, e, Empty)
        | Node (l, elem, r) ->
        if( e < elem ) then Node(insert_node l e, elem, r )
        else Node(l, elem, insert_node r e );;
           

let tree = Node(Node(Node(Empty,1,Empty), 3, Node(Empty,6,Empty)), 8, Node(Empty,10,Empty)) ;;