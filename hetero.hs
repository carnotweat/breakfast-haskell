{-# LANGUAGE GADTs #-}

data Expr a where
  SLit    :: String -> Expr String
  SAppend :: Expr String -> Expr String -> Expr String
  ILit    :: Int -> Expr Int
  IAdd    :: Expr Int -> Expr Int -> Expr Int

interp :: Expr a -> a
interp (SLit s)        = s
interp (SAppend s1 s2) = interp s1 ++ interp s2
interp (ILit i)        = i
interp (IAdd i1 i2)    = interp i1 + interp i2
