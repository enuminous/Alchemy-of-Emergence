# Alchemy of Emergence — Lean 4 mathematical core

**Candidate formalization; clean GitHub Actions compilation has not yet been confirmed.** Uses Lean 4.28.0 and an exact Mathlib commit pinned in both Lake configuration and a committed resolved `lake-manifest.json`. No `sorry` or additional axiom declarations.

## Verified propositions targeted

- The exact **1+1-dimensional formal jet** version of the wave-operator product identity,
  `Box(m φ) = m Box(φ) + C[m,φ]`, using ordinary second-product rules.
- The constant-spatial-envelope/time-modulation specialization (with temporal jet inputs).
- The algebraic negation and cancellation of phase-inverted harmonics.
- A strict-positive denominator for `K/(G+ε)` when `G≥0` and `ε>0`.

**Do not mistake this for proof** of a physical EFMW root equation, real chemistry at harmonic index Z, the complex-exponential derivative identity, the full 3+1 analytic product theorem, or experimental cognitive observables. Jet entries are independent formal parameters representing derivative values, rather than proved derivatives of analytical functions.

## Reproduce

```bash
cd formal
lake exe cache get
lake build AlchemyHarmonics
lake env lean AlchemyHarmonics.lean
```

The resolved `lake-manifest.json` is committed, reusing the dependency graph of the existing Monolithic-102 Lean 4.28 analysis package. Before issuing a *verified formal* release, perform a clean build, inspect CI logs and the actual proof dependencies, and pin the source commit SHA. No successful build is asserted here.

## Mathematical derivation

Write (M_n=A_n e^{i(nω_0 t+θ_n)}), assuming differentiability sufficient for the product rule. In each spatial direction,

`∂²(Mφ)=M∂²φ+2(∂M)(∂φ)+(∂²M)φ`.

For `Box_c = Δ - c⁻²∂²_t` (with nonzero real c), summing the spatial directions yields

`Box_c(Mφ) = M Box_c φ + 2 ∇M · ∇φ - 2 c⁻² M_t φ_t + φ Box_c M`.

One spatial coordinate is proved as a polynomial identity of the derivative jets in the Lean source. This is an analytic identity in standard calculus; formally connecting the jets to Fréchet derivatives in 3+1 dimensions remains another theorem obligation.

If `A_n` and `θ_n` are constant, write `Ω=nω_0`. Then `M_t=iΩM`, `M_tt=-Ω²M`, `∇M=0`, giving

`C_n = M [Ω² c⁻² φ - 2iΩ c⁻² φ_t]`.

This last **exponential derivative specialization is a written derivation**, not yet part of the checked Lean theorem statements.

The natural transformed source is `M(E+Pc)`. With that definition the correction above is exact. Arbitrary independently defined `E_n,P_n` require additional source-mismatch terms.
