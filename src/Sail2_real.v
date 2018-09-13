Require Export Rbase.
Require Import Reals.
Require Export ROrderedType.

Definition realFromFrac (num denom : Z) : R := Rdiv (IZR num) (IZR denom).

Definition gteq_real (x y : R) : bool := if Rge_dec x y then true else false.
Definition lteq_real (x y : R) : bool := if Rle_dec x y then true else false.
Definition gt_real (x y : R) : bool := if Rgt_dec x y then true else false.
Definition lt_real (x y : R) : bool := if Rlt_dec x y then true else false.

(* Export select definitions from outside of Rbase *)
Definition powerRZ := powerRZ.
Definition Rabs := Rabs.

(* Use flocq definitions, but without making the whole library a dependency. *)
Definition Zfloor (x : R) := (up x - 1)%Z.
Definition Zceil (x : R) := (- Zfloor (- x))%Z.
