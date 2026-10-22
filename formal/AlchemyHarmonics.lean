import Mathlib

/-!
# Alchemy of Emergence: algebraic harmonic product identity

This is a formal-algebraic *jet identity* for one spatial direction.
Inputs named derivatives represent jets; the theorem does not assert their
analytic realizability or physical EFMW dynamics. The 3D identity is the
sum of the corresponding spatial contributions.

No `sorry`, new `axiom`, or use of Lean `native_decide`.
-/

namespace AlchemyOfEmergence

/-- Formal d'Alembertian of a field from given second-derivative jets. -/
def boxJet (invC2 lap time2 : ℂ) : ℂ :=
  lap - invC2 * time2

/-- Two-factor product's first spatial derivative. -/
def gradProduct (m phi dm dphi : ℂ) : ℂ :=
  dm * phi + m * dphi

/-- Two-factor product's second spatial derivative (Leibniz jet). -/
def spatialSecondProduct
    (m phi dm dphi d2m d2phi : ℂ) : ℂ :=
  d2m * phi + 2 * dm * dphi + m * d2phi

/-- Two-factor product's second time derivative (Leibniz jet). -/
def temporalSecondProduct
    (m phi mt phit mtt phitt : ℂ) : ℂ :=
  mtt * phi + 2 * mt * phit + m * phitt

/-- The EFMW modulation correction as a jet polynomial. -/
def couplingJet (invC2 phi dm dphi mt phit d2m mtt : ℂ) : ℂ :=
  2 * dm * dphi - 2 * invC2 * mt * phit +
    phi * (d2m - invC2 * mtt)

/-- Exact product-rule identity for the one-dimensional wave operator. -/
theorem modulation_product_rule
    (invC2 m phi dm dphi mt phit d2m d2phi mtt phitt : ℂ) :
    boxJet invC2
      (spatialSecondProduct m phi dm dphi d2m d2phi)
      (temporalSecondProduct m phi mt phit mtt phitt)
      =
      m * boxJet invC2 d2phi phitt +
      couplingJet invC2 phi dm dphi mt phit d2m mtt := by
  unfold boxJet spatialSecondProduct temporalSecondProduct couplingJet
  ring

/-- Setting the envelope's derivatives to zero removes spatial terms. -/
theorem time_only_coupling
    (invC2 phi phit mt mtt : ℂ) :
    couplingJet invC2 phi 0 0 mt phit 0 mtt =
      -2 * invC2 * mt * phit - invC2 * phi * mtt := by
  unfold couplingJet
  ring

/-- A half-turn phase sign inversion is an algebraic negation. -/
theorem anti_harmonic (m phi : ℂ) :
    (-m) * phi = -(m * phi) := by
  ring

/-- A phase inversion cancels its original amplitude exactly. -/
theorem harmonic_cancellation (m phi : ℂ) :
    m * phi + (-m) * phi = 0 := by
  ring

/-- For real nonnegative grounding and positive regularizer the ratio exists. -/
theorem grounding_denominator_positive
    (ground eps : ℝ) (hg : 0 ≤ ground) (he : 0 < eps) :
    0 < ground + eps := add_pos_of_nonneg_of_pos hg he

/-- No new elemental frequency or empirical correspondence is derived here. -/
end AlchemyOfEmergence
