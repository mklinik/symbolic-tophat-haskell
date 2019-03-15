module Language.Expr.Sym where


import Data.SBV

import Language.Expr
import Language.Pred



-- Stepping --------------------------------------------------------------------


step :: List (Pred sxt TyBool) -> Expr cxt sxt t -> List ( List (Pred sxt TyBool), Expr cxt sxt t )
step ps = undefined

  -- Lam f -> \x -> eval (Cons x vars) f
  -- App f a -> eval vars f $ eval vars a
  -- Var i -> lookup i vars
  -- Sym _ -> error "Found Sym in executable expression" --FIXME: should be checkable
  -- Val i -> i
  --
  -- Un o a -> un o (eval vars a)
  -- Bn o a b -> bn o (eval vars a) (eval vars b)
  -- If p a b -> if eval vars p then eval vars a else eval vars b
  --
  -- Unit -> ()
  -- Pair a b -> ( eval vars a, eval vars b )
  -- Fst e -> fst $ eval vars e
  -- Snd e -> snd $ eval vars e
