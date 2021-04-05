import qiskit

#set up an empty program for one qubit.
qr = qiskit.QuantumRegister(1)
cr = qiskit.ClassicalRegister(1)
program = qiskit.QuantumCircuit(qr, cr)

#We don't want to do anything to the qubit, so we'll skip straight to reading it out.
program.measure(qr,cr)

#Tell the local simulator to execute this entirely trivial program.
job = qiskit.execute( program, qiskit.BasicAer.get_backend('qasm_simulator') )

print( job.result().get_counts() )
#Since qubits are initialized as 0, and we did nothing to our qubit before readout, we'll just get the result 0 many times.
