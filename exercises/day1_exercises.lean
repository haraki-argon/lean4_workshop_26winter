import Mathlib

-- 看看如下check命令在infoview分别输出什么并理解原因:
section
variable (a b c : ℝ)

#check (a : ℝ)
-- #check (a : ℕ)
#check (mul_comm a b : a * b = b * a)
#check mul_assoc c a b
#check mul_comm a
#check mul_comm

end

-- 按定义相等
example (a b : ℝ) : a - b = a + -b := by
  sorry


-- 只用 rw tactic和 #check 给出的定理完成如下习题

section
variable (a b c d f e: ℝ)

#check lt_trans
#check mul_assoc
#check mul_comm

example : c * b * a = b * (a * c) := by
  sorry

example : a * (b * c) = b * (a * c) := by
  sorry

example (h : b * c = e * f) : a * b * c * d = a * e * f * d := by
  sorry

#check sub_self

example (hyp : c = b * a - d) (hyp' : d = a * b) : c = 0 := by
  sorry

#check mul_add
#check add_mul
#check add_assoc
#check two_mul

example : (a + b) * (a + b) = a * a + 2 * (a * b) + b * b := by
  sorry

#check add_zero
#check pow_two
#check mul_sub
#check add_sub
#check sub_sub

example : (a + b) * (a - b) = a ^ 2 - b ^ 2 := by
  sorry

end


-- 使用 rw , 考虑结合 \verb|exact, nth_rw, have, apply 完成如下练习

example (a b c d : ℝ) (hyp : c = d * a + b) (hyp' : b = a * d) : c = 2 * a * d := by
  sorry

example (a b c : ℕ) (h : a + b = c) : (a + b) * (a + b) = a * c + b * c := by
  sorry

#check add_left_cancel
example (a : ℝ) : 0 * a = 0 := by
  sorry

#check neg_add_cancel_left

theorem neg_eq_of_add_eq_zero {a b : ℝ} (h : a + b = 0) : -a = b := by
  sorry

theorem neg_neg' (a : ℝ) : - -a = a := by
  sorry

#check inv_mul_cancel
#check one_mul

theorem my_mul_inv_cancel {G : Type*} [Group G] (a : G) : a * a⁻¹ = 1 := by
  sorry
