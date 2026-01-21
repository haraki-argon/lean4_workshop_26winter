import Mathlib

section GroupTheory

open Subgroup

/-
  Let G be a group. Let H be a subgroup of G of index p, where p is a prime.
  Then H is a maximal subgroup of G.
-/
theorem covby_top_of_index_eq_prime {p : ℕ} [Fact p.Prime] {G : Type*} [Group G] [Finite G]
    {H : Subgroup G} (h_idx : H.index = p) : CovBy H ⊤ := by
  sorry

/-
  Let G be a p-group. Let H be a maximal subgroup of G.
  Prove that [G : H] = p.

  Hint: Show that H is normal in G.
-/
theorem index_eq_prime_of_covby_top (p : ℕ) [Fact p.Prime]
    {G : Type*} [Group G] [Finite G] [Fact (IsPGroup p G)]
    {H : Subgroup G} (h_max : CovBy H ⊤) : H.index = p := by
  sorry

end GroupTheory

section NumberTheory

def x : ℕ → ℕ
| 0 => 2
| n + 1 => x n * (x n - 1) + 1

theorem sylvester_coprime {m n : ℕ} (h : m ≠ n) :
    (x m).gcd (x n) = 1 := by
  sorry

theorem fib_equation (n : ℕ) :
    Nat.fib (n + 1) ^ 2 - Nat.fib (n + 1) * Nat.fib n - Nat.fib n ^ 2 = (-1:ℤ) ^ n := by
  sorry

end NumberTheory

section Analysis

open Set Filter Topology

/-- The sequence definition -/
def y (x₀ : ℝ) : ℕ → ℝ
| 0 => x₀
| n + 1 => y x₀ n * (1 - y x₀ n)

/-- Main statement -/
theorem problem_n_x_n_tends_to_1 (x₀ : ℝ) (h₀ : x₀ ∈ Ioo 0 1) :
    Tendsto (fun n => n * y x₀ n) atTop (𝓝 1) := by
   sorry

end Analysis
