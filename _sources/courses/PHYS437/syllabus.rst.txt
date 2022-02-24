.. raw:: html

    <style> .red {color:#aa0060; font-weight:bold; font-size:16px} </style>

###################
Syllabus
###################

.. list-table:: Course syllabus
   :widths: 10 40
   :stub-columns: 1

   * - Course Title
     - PHYS437 PRACTICAL QUANTUM COMPUTING FOR SCIENTISTS
   * - Lecturers
     - Barış Malcıoğlu
   * - Grading
     - Midterm %20, Term project %40, Hands-on sessions & homeworks %40

*************************
Tentative Course Contents
*************************

Chapter 1: Review & Mathematical Foundation
-----------------------------------------------

    * Linear Algebra
    * Review of the four postulates of quantum mechanics
        * Postulate 1: Individual quantum systems
        * Postulate 2: Quantum operations
        * Postulate 3: Composite quantum systems
        * Postulate 4: Measurement
    * No cloning theorem
    * Quantum entanglement
    * Density matrices
        * The partial trace operation
        * Using partial trace to detect entanglement
        * How the postulates of quantum mechanics apply to density operators

Chapter 2: Quantum Circuit Diagrams
------------------------------------------

    * Quantum Circuit Diagrams
    * Quantum operators
        * Unary
        * Binary
        * Ternary
        * Comparison with classical gates
    * The universality of Quantum operators
    * The Bloch Sphere

Chapter 3: Complexity Theory; Entropy and Entanglement Distillation
--------------------------------------------------------------------

    * Complexity Theory
        * Time Complexity
        * Complexity Classes
    * Entropy
        * Shannon entropy
        * Von Neumann Entropy
    * Quantifying entanglement in composite quantum systems
    * Entanglement distillation

Chapter 4: The Deutsch-Josza and Berstein-Vazirani algorithms
--------------------------------------------------------------

    * Functions as oracles
    * The problem: Is f constant or balanced?
    * The algorithm
        * A naive idea
        * Deutsch’s algorithm
        * The phase kickback trick
        * The Deutsch-Josza algorithm
        * The Berstein-Vazirani algorithm

Chapter 5: Strategies of Input Encoding
--------------------------------------------

    * Basis Encoding
    * Amplitude Encoding
    * Time-Evolution Encoding
    * Hamiltonian Encoding


Chapter 6: Simon’s algorithm and applications to cryptography
-----------------------------------------------------------------

    * Simon’s algorithm
        * Birthdays and a naive classical algorithm
        * Simon’s algorithm
    * Application to cryptography

Chapter 7: The Quantum Fourier Transform
--------------------------------------------------------

    * From Vandermonde matrices to the Discrete Fourier Transform
    * The Quantum Fourier Transform (QFT)
    * Quantum Phase Estimation (QPE)
    * Applications of QPE
    * Quantum algorithms for QPE

Chapter 8: Shor’s quantum factoring algorithm
---------------------------------------------------

    * The integer factorization problem
    * The factoring algorithm
        * Reducing FACTOR to order-finding
        * Sampling via QPE
        * Postprocessing via continued fractions
    * Application: Breaking RSA

Chapter 9: Variational Circuits as Machine Learning Models (time permitting)
--------------------------------------------------------------------------------

    * How to Interpret a Quantum Circuit as a Model
        * Deterministic Quantum Models
        * Probabilistic Quantum Models
        * An Example: Variational Quantum Classifier
        * An Example: Variational Generator
    * Which Functions Do Variational Quantum Models Express?
        * Quantum Models as Linear Combinations of Periodic Functions
        * An Example: The Pauli-Rotation Encoding
    * Training Variational Quantum Models
        * Gradients of Quantum Computations
        * Parameter-Shift Rules
        * Barren Plateaus
        * Generative Training
     * Quantum Circuits and Neural Networks
        * Emulating Nonlinear Activations
        * Variational Circuits as Deep Linear Neural Networks
        * Time-Evolution Encoding as an Exponential Activation

*****************
Hands-On sessions
*****************

.. role:: red

* There will be homework for lab sessions.
* :red:`Attendance to all of the hands-on sessions, and submitting the assigned hands-on work is mandatory. Any missed hands-on session, or assigned hands-on work will result in N/A grade. Only officially documented cases (such as medical reports) will be considered for exemption.`

*****************
Midterm
*****************

.. role:: red

* The midterm exam will involve a theory part and a programming part. 
* The theory part should be answered using a Latex/Word processor, converted to pdf.
* The programming part must be an ASCII text file containing python code (\*.py). 
* :red: The files should be uploaded to supplied Turnitin interface. Any incompatible input will be disregarded.

*************
Term projects
*************
* Participants are expected to present a project involving Quantum Computation, Quantum Communication, or Quantum hardware.
* **The term project is the final exam.**
* There are two parts: Presentation (~20 minutes), Q&A session after the talk (~10 minutes)
* The presenter will be graded according to the scientific quality of the presentation
* The audience will be graded according to their participation in the Q&A session.
* The term projects will be presented in the last 3-4 weeks
* **Attendance to the term project presentations is mandatory.** The first missed week will result in a reduction of your final grade to %65. The second missed week will result in a reduction of your final grade to %35. If you miss three weeks, you will receive N/A grade.  
* Only one missed week might be allowed with a valid official excuse.

*********
Textbooks
*********

Theory Content:
-----------------

    * "Quantum Computing for the Quantum Curious" Ciaran Hughes, Joshua Isaacson, Anastasia Perry, Ranbel F. Sun, Jessica Turner https://doi.org/10.1007/978-3-030-61601-4 (open Access)
    * "Quantum Computing: Lecture Notes" Ronald de Wolf `arXiv:1907.09415 <https://arxiv.org/abs/1907.09415>`_
    * "Introduction to Quantum Computation" Sevag Gharibian (Can be obtained from his course page `here <http://groups.uni-paderborn.de/fg-qi/courses/UPB_INTRO_QUANTUM/S2020/notes/IQC_Masterfile.pdf>`_)

Lab Content:
-----------------

    * `Qiskit textbook <https://qiskit.org/textbook/content/ch-ex/>`_
    * `Xanadu Quantum Codebook <https://codebook.xanadu.ai/>`_
    * "Quantum Computing: An Applied Approach"  Jack D. Hidary https://doi.org/10.1007/978-3-030-23922-0

Optional content (time permitting):
-------------------------------------

    * "Lectures on Quantum Tensor Networks" Jacob Biamonte (for a systematic connection between circuit diagrams and CV systems)
    * "Machine Learning  with Quantum Computers" Maria Schuld, Francesco Petruccione https://doi.org/10.1007/978-3-030-83098-4

