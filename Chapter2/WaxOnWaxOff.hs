module WaxOnWaxOff where

waxOn = x * 5
 where x = y ^ 2
       y = z + 8
       z = 7

-- TRYING SOMETHING MYSELF

-- (BROKEN) waxOn' = (\x y z -> print (x*5)) (y^2) (z+8) (7)

waxOn'' z  = (\x -> print (x*5)) ((z+8)^2)

waxOn''' x y = (\x y -> print (x + y)) x y

-- LEARNING?
waxOn'''' x y z = (\x y z -> print (x * (y+z))) x y z
-- 4 2 5 Results in 28 instead of 40
--
-- SO:
-- Insert 4 (for x)
--   \y z -> 4*(y + z) y z    == 4y + 4z
-- Insert 2 (for y)
--   \z -> (4*2 + 4*z) z      == 8 + 4*z
-- Insert 5 (for z)
--   8 + 4*5                  == 28
--
--  OR:
-- Insert 4 (for x)
--   \y z -> 4*(y + z) y z    == 4*(y + z)
-- Insert 2 (for y)
--   \z -> 4*(2 + z)          == 4*(2 + z)
-- Insert 5 (for z)
--   4*(2+5)                  == 4 * 7 = 28

waxOff x = x * 3
