
;; "Basic-One and Two Dimensional NMR Spectroscopy" (2004, Horst Friebolin)


(setq symbols-used
      '(b0 "flux density"
	   b1b2 "radiofrequency field with frequency v1 and v2"
	   beff "effective field at position of nucleus"
	   C2 "two fold axis of symmetry"
	   chi "magnetic suceptibility"
	   13C+1H+ "Observation of 13C resonance while 1H is decoupled"
	   _delta "chemical shift relative to a standard (e.g. TMS)"
	   E "energy"
	   deltaE "energy difference between two states"
	   _delta "uncertainty in th energy of a state"
	   EA "Arrhenius activation energy"
	   EX "Electronegativity of a substituent X"
	   _eta "fractional enhancement in NOE"
	   _phi "phase difference between two vectors"
	   Phi "bond angle or dihedral angle"
	   F1F2 "frequency axes in a 2D NMR spectrum"
	   G "field gradient"
	   deltaG++ "Free Gibbs enthalpy of activation"
	   _gamma "gyromagnetic ratio, _-gamma = gamma/2pi"
	   h "planck constant, _-h = h/2pi"
	   h++ "h/2pi"
	   deltaH++ "Enthalpy of activation"
	   I "Nuclear angular momentum quantum number (spin)"
	   boldI "Nuclear spin operator"
	   nJ "Coupling constant through n bonds"
	   K "equilibrium constant"
	   _k "rate constant"
	   _kC "rate constant at the coalescence temperature T_C"
	   _kB "Boltzmann constant"
	   k_0 "frequency factor"
	   mu "magnetic moment (of nucleus)"
	   muz "component of magnetic moment along the static field direction (z axis)"
	   m "magnetic quantum number"
	   ;; https://en.wikipedia.org/wiki/Magnetic_quantum_number#Effect_in_magnetic_fields
	   bold_M0 "macroscopic magnetization of the sample in the static field B_0"
	   M_x.M_y. "transverse magnetization components in the x' and y' directions"
	   M_z "longitudinal magnetization in the z-direction (static field direction)"
	   M_X "magnetization vector for the X nuclei"
	   M_H_C_alpha "1H magnetization vectors in a two-spin system with the 13C nuclei in the alpha and beta states"
	   M_C_H_alpha "13C magnetization vectors in a two-spin system with the protions in the alpha and beta states"
	   N "total number of nuclei in the sample"
	   N_alphaN_beta "Numbers of nuclei in the alpha and beta states"
	   N_i "Number of nuclei in level i"
	   _nu "frequency"
	   _nuL "Larmor frequency"
	   _nui "Resonance frequency of nucleus i"
	   _nui "frequency of r.f. generator (observing frequency)"
	   _nu2 "decoupling frequency"
	   _nu1/2 "half height width"
	   P "angular momentum of nucleus"
	   P_z "component of angular moment of nulceus in the z-direction"
	   Q "electric quadrupole moment"
	   R "Universal gas constant"
	   r "Interatomic or internuclear distance"
	   _sigma "shielding constant"
	   (S t) "signal as a function of time"
	   (S f) "signal as a function of frequency"
	   S_i "substittutent increment for predicting chemical shifts"
	   Delta_S++ "Entropy of activation"
	   _tau "time interval between pulses"
	   _tauC "correlation time"
	   _tau1 "lifetime of a nucleus in a particular spin sate or magnetic environment"
	   _taup "pulse duration"
	   _tauzero "zero-crossing point (Time at which M_z = 0 after a 180 deg pulse)"
	   t1 "Variables time in a 2D experiment, usually increased in regular steps"
	   t2 "aquisition time"
	   right_tri "fixed time interval in a 2D pulse sequence"
	   T "Tesla unit of magnetic flux density"
	   italic_T "Absolute temperature in Kelvin"
	   T_1 "spin lattice or longitudinal relaxation time"
	   T_2 "spin spin or transverse relaxation time"
	   T_2* "Experimentally observed transverse relaxation time (including effect of field inhomogeneity)"
	   Theta "Pulse angle"
	   W0 "transition probability for zero-quantum transitions by relaxation processes"
	   W1 "transition probability for single quantum transitions by relaxation processes"
	   W2 "transition probability for double quantum transitions by relaxation processes"
	   x "mole fraction"
	   ))


;; Most nuclei posses a Nuclear or Intrinstic angular momentum P
;; According to the classical picture th atomic nucleus assumed to be spherical rotates about an axis
;; Quantum mechanical considerations show this angular momentum is quantized

'(= P (sqrt (* I (+ 1 I) h++)))

;; Nuclear spin can have the values 0, 1/2, 1, 3/2, 2...up to 6
;; Neither the values of I nor those of P can yet be predicted from theory
;; The angular momentum P has associated with it a magnetic moment mu
;; both are vector quantities (magnitude and direction) and they are proptional to eachother

'(= mu (* gamma P))

;; The proportionality factor gamma is constant for each nuclide (Each isotope of each element) and is called the magnetogyric ratio.

;; The detection sensitivity of a nuclide in the NMR experiment depends on Gamma, nuclides with a large value of gamma are said to be sensitive (easy to observe), while those with a small gamma are said to be insensitive

'(see page 3 Table 1-1 for Nuclide NMR properties)

;; Nuclides with spin I = 0 therefore have no nuclear magnetic moment.

;; Two very important fats for our purposes are that the 12C isotope of carbon and the 16O isotope of oxygen belong to this class of nuclides, this means that the maing building blocks of organic compounds cannot be observed by the NMR spectroscopy

;; For most nuclides the nuclear angular momentum vector P and the magnetic moment vector Mu point in the same direction, i.e. they are parallel.

;; However, in a few cases, for example 15N and 29Si (and also the electron!), they are antiparallel. The consequences of this will be considered in Chapter 10


;; If a nucleus with angular momentum P and magnetic moment Mu is placed in a static magnetic field B0 the angular momentum takes up an orientation such that its component Pz along the direction of the field is an integral of half-integral multiple of h++

'(= Pz (* m h++))

;; Here m is the magnetic or directional quantum number and can take any of the values m = I, I-1...-I

"https://en.wikipedia.org/wiki/Magnetic_quantum_number#Effect_in_magnetic_fields"

;; It can easily be deduced that there are (2I + 1) different values of m, and consequently an equal number of possible orientations of the angular momentum and magnetic moment in the magnetic field.

;; This behavior of the nuclei in the magnetic field is called Directional Quantization.

;; For protons and 13C Nuclei which have I = 1/2 this results in two m-values (/ 1 2) and (/ -1 2), however for nuclei with I = 1 such as 2H and 14N there are three values (m = 1,0, and -1)

;; From Equations (1-2 and 1-4) we obtain the components of the magnetic moment along the field direction z:

'(= mu_z (* m gamma h++))

;; In the classical representation the nuclear dipoles precess around the z-axis which is the direction of the magnetic field, their behavior resembles that of a spinning top (Fig 1-2)

;; nu_L, the Precession Frequency or Larmor frequency is proptional to the magnetic flux density B0

'(= nu_L (* m gamma h++))

;; In the classical representation the nuclear dipoles precess around the z-axis which is the direction of the magnetic field, their behavior resembles that of a spinning top. The precession frequency or Larmor frequency nu_L is proportional to the magnetic flux density B_0

'(= nu_L (abs (/ gamma (* 2 pi))))

;; For a precessing nuclear dipole only certain angles are allowed, because of the directional quantization. For the proton with I = 1/2, for example, this angle is 54 deg 44'

;; The energy of a magnetic dipole in a magnetic field with a flux density B0 is 

'(= E (* -1 B0))

;; Thus for a nucelus with (2I + 1) possible orientations there also also (2I + 1) energy states,
;; which are called the nuclear Zeeman levels. From Equation (1-5) we have

'(= E (* -1 m gamma h++ B0))

;; For the proton (H+) and the 13C nucleus, both of which have I = 1/2,
;; there are two energy values in the magnetic field corresponding to the two m-values
;; +1/2 and -1/2.

;; If m = + 1/2, mu_z is parallel to the field direction, which is the energetically preferred orientation

;; Conversely for m = -1/2, mu_z is anti-parallel

;; In quantum mechancis the m = +1/2 state is described by the spin function Alpha,
;; while the m = -1/2 is described by the spin function Beta

;; For nuclei with I = 1, such as 2H and 14N, there are any three m-values (+1,0, and -1) and therefore three energy levels

;; The energy difference between two adjacent energy levels is

'(= deltaE (* gamma h++ B0))


;; How do the nuclei in a macroscopic sample, such as that in an NMR sample tube, distribute themselves between the different energy states in thermal equilibrium?
;; The answer to this question is provided by Boltzmann statistics.

;; For nuclei with I = 1/2, if we represent the number of nuclei in the upper enery level by N_beta and the number in the lower energy level by N_alpha, then

'(= (/ N_beta N_alpha) (- 1 (/ (* gamma h++ B0) (* _kB Temp))))

;; Where Temp is the absolute Temperature in Kelvin

;; For protons, and also for all other nuclides, the energy difference delta_E is very smalled compared with the average energy k_b_T of the thermal motions, and consequently the populations of the energy lvels are nearly equal. The exccess in the lower energy level is only in the region of parts per million.

;; Macroscopic Magnetization

;; According to the classical picture, a nucleus with I = 1/2 (like 1H or 13C) percesses around the field axis z on the surface of adouble cone as shown in Figure 1-5 (page 6)

;; If we add the z-components of all the nuclear magnetic moments in a sample we obtain a macroscopic magnetization M0 along the field direction, since N_alpha is greater than N_beta.

;; The vector M0 plays an important role in the description of all types of pulsed NMR experiments



;; The Resonance Condition (page 7)

;; In the nuclear magnetic resonance experiment transitions are induced between different energy levels by irradiating the nuclei with a superimposed field B1 of the correct quantum energy, i.e. with electromagnetic waves of the appropriate frequency nu_1.

;; This conidition enables the magnetic component of the radiation to interact with the nuclear dipoles.

;; Let us consider the protons in a solution of chloroform (ChCl3).

;; 
