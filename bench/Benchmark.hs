import Criterion.Main
import qualified Data.Sequence as S
import qualified Data.Splay.Sequence as SS

main :: IO ()
main = defaultMain
  [ bgroup "Data.Sequence.fromList"
    [ bench "10" $ nf S.fromList [(0 :: Int) .. 9]
    , bench "100" $ nf S.fromList [(0 :: Int) .. 99]
    , bench "1000" $ nf S.fromList [(0 :: Int) .. 999]
    , bench "10000" $ nf S.fromList [(0 :: Int) .. 9999]
    , bench "100000" $ nf S.fromList [(0 :: Int) .. 99999]
    ]
  , bgroup "Data.Splay.Sequence.fromList"
    [ bench "10" $ nf SS.fromList [(0 :: Int) .. 9]
    , bench "100" $ nf SS.fromList [(0 :: Int) .. 99]
    , bench "1000" $ nf SS.fromList [(0 :: Int) .. 999]
    , bench "10000" $ nf SS.fromList [(0 :: Int) .. 9999]
    , bench "100000" $ nf SS.fromList [(0 :: Int) .. 99999]
    ]
  ]

