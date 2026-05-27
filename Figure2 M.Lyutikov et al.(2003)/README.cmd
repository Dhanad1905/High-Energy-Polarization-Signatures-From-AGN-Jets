# Figure 2 Reproduction — Polarization of Prompt Gamma-Ray Burst Emission

## Overview

This project reproduces Figure 2 from the paper:

**Lyutikov, M., Pariev, V. I., & Blandford, R. D. (2003)**  
*Polarization of Prompt Gamma-Ray Burst Emission: Evidence for Electromagnetically Dominated Outflow*

The simulation visualizes the polarization vector pattern produced by a relativistically expanding thin emitting shell carrying a large-scale ordered toroidal magnetic field.

The reproduced figure demonstrates how relativistic aberration and magnetic field geometry determine the observed synchrotron polarization structure.

---

## Physics Background

The model assumes:

- Electromagnetically dominated relativistic outflow
- Thin quasi-spherical emitting shell
- Large-scale toroidal magnetic field
- Synchrotron dominated radiation
- Optically thin emission
- Relativistic Doppler boosting

The observer direction relative to the expanding shell is determined through:

```text
l = cos(θ) cos(θ_ob)
    + sin(θ) sin(θ_ob) cos(φ)
```

where:

- θ = polar angle
- φ = azimuthal angle
- θ_ob = observer viewing angle

The relativistic aberration modifies the observed polarization direction through Lorentz transformation of the emitted radiation.

The polarization angle is calculated from:

```text
χ = arctan2(sin χ, cos χ)
```

where the transformed polarization components depend on:

- relativistic beaming
- shell geometry
- toroidal magnetic field orientation

---

## Numerical Method

The polarization vectors are computed over a two-dimensional angular grid covering the relativistically visible region of the emitting shell.

The model evaluates:

- relativistic projection effects
- polarization angle rotation
- observer-dependent aberration

The visible emitting region is restricted approximately to:

```text
θ_max ≈ 3 / Γ
```

due to relativistic beaming.

To maintain numerical stability near singular regions, a small regularization parameter:

```text
ε = 10⁻¹²
```

was introduced into the denominator calculations.

---

## Contents

This folder contains:

- `Fig2 Lyutikov 2003.ipynb`  
  Jupyter notebook containing the full numerical implementation and plotting procedure.

- `Figure 2 Lyutikov 2003.png`  
  Final reproduced polarization map.

---

## Libraries Used

- NumPy
- Matplotlib

Install dependencies using:

```bash
pip install numpy matplotlib
```

---

## Generated Outputs

The reproduced figure displays:

- Polarization vector field
- Observer-dependent polarization direction
- Relativistic angular structure
- Toroidal magnetic field polarization signatures

The simulations are performed for:

```text
Γ = 1, 2, 10, 100
```

with observer viewing angle:

```text
θ_ob = 0.523 rad
```

The polarization vectors are visualized using quiver plots over the relativistically visible shell region.

---

## Scientific Motivation

Large polarization fractions observed in relativistic astrophysical outflows require magnetic field coherence over angular scales larger than the relativistically visible emitting patch.

This model demonstrates that ordered toroidal magnetic fields in electromagnetically dominated outflows naturally produce coherent polarization structures capable of explaining highly polarized gamma-ray burst and AGN jet emission.

The reproduced polarization maps further illustrate:

- relativistic aberration effects
- polarization vector rotation
- magnetic field coherence
- observer geometry dependence

in relativistic synchrotron emission.

---

## Reference

Lyutikov, M., Pariev, V. I., & Blandford, R. D. (2003).  
*Polarization of Prompt Gamma-Ray Burst Emission: Evidence for Electromagnetically Dominated Outflow*  
The Astrophysical Journal.

---

## Author

Dhanad Jha

Supervisor:  
Dr. Bhargav Vaidya, IIT Indore

GitHub Repository:
https://github.com/Dhanad1905/High-Energy-Polarization-Signatures-From-AGN-Jets#high-energy-polarization-signatures-from-agn-jets
