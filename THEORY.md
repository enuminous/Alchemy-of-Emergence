# EFMW Harmonic Construction

## 1. Root field

The canonical field used by this edition is

```math
\Box_c\phi \equiv
\nabla^2\phi-\frac{1}{c^2}\partial_t^2\phi
=\frac{4\pi}{c^2}(E+Pc).
```

This repository takes that expression as the **EFMW root postulate**. It does not treat the equation's empirical validity as established merely by using it.

## 2. Elemental harmonic

For element or symbolic state \(n\), define

```math
\phi_n(x,t)=A_n(x,t)\,\phi(x,t)
e^{i(n\omega_0t+\theta_n)}.
```

Here \(A_n\) is an element-specific envelope, \(n\) the harmonic index, \(\omega_0\) a reference angular frequency, and \(\theta_n\) a phase.

Applying the root operator gives

```math
\Box_c\phi_n=
\frac{4\pi}{c^2}(E_n+P_nc)+C_n[\phi,A_n],
```

where \(C_n\) collects coupling terms introduced by modulation of the common field.

## 3. Cognitive observable

Each taxonomy entry may additionally define an observable

```math
I_n=\mathcal O_n[\phi_n;\mathbf q_n],
```

where \(\mathcal O_n\) is the declared interpretation operator and \(\mathbf q_n\) contains measurable or explicitly symbolic parameters.

This separates three things that the print book sometimes blends: the common field equation, a harmonic construction, and a cognitive metaphor.

## 4. Conventional elements

For atomic number \(Z=1,\ldots,118\), the default index is \(n=Z\):

```math
\phi_Z=A_Z\phi e^{i(Z\omega_0t+\theta_Z)}.
```

This is a **model definition**, not a claim that chemical elements physically oscillate at integer multiples of an EFMW frequency. A physical version would require a specified mapping from atomic observables to \(A_Z,\omega_0,\theta_Z\) and prospective experimental tests.

## 5. Meta-elements

Meta-elements use named operators rather than pretending to possess ordinary atomic numbers. Examples:

**Aetherium — coherence shaping**
```math
I_{Ae}=\mu_a\,\partial_t S_f,
\qquad
\mathcal O_{Ae}=\mu_a\partial_t\mathcal S.
```

**Azoth — dissolution/reconfiguration**
```math
I_{Az}=\Lambda_r\,\partial_tD_m,
\qquad
\mathcal O_{Az}=\Lambda_r\partial_t\mathcal D.
```

**Philosophon — recursive observation**
```math
I_{Ph}=\Omega_r\,\partial_tR_c,
\qquad
\mathcal O_{Ph}=\Omega_r\partial_t(\mathcal M\circ\mathcal M).
```

**Cryptonullium — apparent coherence without grounding**
```math
I_{Cr}=\gamma_m\,\partial_tP_s.
```

For empirical work, introduce grounding \(G\) and observed coherence \(K\):

```math
\chi_{Cr}=\frac{K}{G+\epsilon}.
```

High \(\chi_{Cr}\) identifies the operational target: output that appears highly coherent while possessing weak grounding.

## 6. Anti-harmonics

Anti-elements are modeled as destructive, suppressive, null, or terminal transformations:

```math
\tilde\phi_n=A_n\phi e^{i(n\omega_0t+\theta_n+\pi)}
```

or through a negative observable operator,

```math
I_n=-\mathcal O_n[\phi_n].
```

The choice must be stated per element; a phase inversion and a negative scalar observable are not mathematically identical.

## 7. Falsifiability rule

Any entry promoted from symbolic taxonomy to physical hypothesis must specify:

- observable variables;
- units and dimensional consistency;
- calibration procedure;
- null model;
- predicted effect and sign;
- uncertainty;
- preregistered acceptance criterion;
- data/code sufficient for replication.

Without those, the entry remains formal or mythopoetic rather than experimentally established.
