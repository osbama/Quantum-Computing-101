.. raw:: html

        <iframe width="560" height="315" src="https://www.youtube.com/embed/rcAMixKZYog" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

**********************************
Linux Terminal Primer
**********************************

Please familiarise yourself well with the Linux Terminal. There are many tutorials, `such as this one <https://www.digitalocean.com/community/tutorials/a-linux-command-line-primer>`_ 


**********************************
Getting your computer ready
**********************************

If you are using Windows, installing `Window Subsystem for Linux <https://docs.microsoft.com/en-us/windows/wsl/install-win10>`_ is highly recommended. Otherwise please consider using :ref:`Dilhan` 

Conda
##################################
`Conda <https://docs.conda.io/en/latest/>`_ is a package, dependency and environment management solution. We will need it to install python packages related to Qiskit. Conda is already installed in :ref:`Dilhan`

.. _install_qiskit:

Qiskit
##################################
`Qiskit [kiss-kit] <https://qiskit.org/>`_  is the IBM's open source SDK for working with quantum computers at the level of pulses, circuits and application modules.  

You can install Qiskit using the instructions `here <https://qiskit.org/documentation/getting_started.html?highlight=conda>`_:  


.. code-block:: bash

   $ conda create -n qiskit python=3
   $ conda activate qiskit
   $ pip install qiskit

don't forget to install the *visualization* support for jupyter notebook integration if you are installing locally

.. code-block:: bash

   $ pip install 'qiskit[visualization]'



.. _Dilhan:

**********************************
Dilhan
**********************************

As a part of this lesson, you should've received a user name and ssh-key for an academic user in Dilhan (named after Dilhan Eroğlu).

Connecting to Dilhan
##################################
You may connect to Dilhan via *SSH* to ``144.122.31.1`` as long as you are in the ``144.122.*.*`` network. This means that on Linux and MacOs you may directly connect by opening a terminal and writing ``ssh username@144.122.31.1``. From Windows, if you do not install WSL you may still connect via `PuTTY <https://www.putty.org/>`_. Please see the `web page for Dilhan <https://metu-physics.github.io/HPC>`_ for more info.

Using the ssh-key
**********************************

On Linux, MacOs and Windows WSL you need to start an agent before adding your key to your keychain. Note the backquotes! Once the agent is started, you can add your key and connect to Dilhan. 

.. code-block:: bash

   $ eval `ssh-agent`
   Agent pid 41514
   $ ssh-add keyfile
   $ ssh user@144.122.31.1



Which software is installed on Dilhan
###########################################

To find out what software packages are available, type:

.. code-block:: bash
   
   $ module avail

Using Qiskit with Conda in Dilhan
**********************************

You need to load the miniconda3 module, and source the conda profile startup script

.. code-block:: bash

   $ module load conda/miniconda3
   You will now leave the environment modules. Source conda startup script for     your user
   Warning! Once sourced, environment modules will not be able to undo the changes in this session
   -----------------------------------------------
   source /opt/miniconda3/etc/profile.d/conda.sh
   -----------------------------------------------
   $ source /opt/miniconda3/etc/profile.d/conda.sh

once the conda environment is loaded and ready, you need to  :ref:`install  qiskit<install_qiskit>`. **You need to do this only once!**. Afterwards, you can always activate the qiskit environment by :
   
.. code-block:: bash

   $ module load conda/miniconda3
   $ source /opt/miniconda3/etc/profile.d/conda.sh
   $ conda activate qiskit



.. _batch_system:

Batch system
###########################################

**NEVER RUN PROGRAMS ON HEADNODE of Dilhan**

The Dilhan system is a resource that is shared between many of users and to
ensure fair use everyone must do their computations by submitting jobs through
a batch system that will execute the applications on the available resources.

The batch system on Dilhan is `SLURM <https://slurm.schedmd.com/>`_ (Simple
Linux Utility for Resource Management.)


Creating and submitting a job script
**********************************************

To run a job on the system you need to create a job script. A job script is a
regular shell script (bash) with some directives specifying the number of CPUs,
memory, etc., that will be interpreted by the batch system upon submission.

After you wrote your job script as shown in the example, you can submit it with::

   sbatch jobscript.sh



Finding queuing information with `squeue`
**********************************************

The `squeue` command is a tool we use to pull up information about the
jobs in queue. By default, the squeue command will print out the
*__job ID__*, *__partition__*, *__username__*, *__job status__*,
*__number of nodes__*, and *__name of nodes__* for all jobs queued or
running within Slurm. Usually you wouldn't need information for all
jobs that were queued in the system, so we can specify jobs that only
you are running with the `--user` flag:

```bash
$ squeue 
```

Stopping jobs with `scancel`
**********************************************

Sometimes you may need to stop a job entirely while it’s running. The
best way to accomplish this is with the `scancel` command. The scancel
command allows you to cancel jobs you are running on Research
Computing resources using the job’s ID. The command looks like this:

```bash
$ scancel your_job-id
```

Helper scripts
**********************************************

To enable helper scripts in Dilhan load the ``helper-scripts`` module (this is loaded by default)::

  module load helper-scripts

Helper script ``usage`` shows statistics about your use of the cluster in the past month.

Example:

.. code-block:: bash

        usage

Helper script ``projects`` shows the projects your user is enrolled in.

Example:

.. code-block:: bash

        projects

Helper script ``sjobs`` shows the running jobs, and recently completed jobs.

Example:

.. code-block:: bash

        sjobs



Example Slurm job script for running a qiskit python script
***************************************************************


The slurm script :download:`slurm-simple-python.sh <slurm-simple-python.sh>`

.. literalinclude:: slurm-simple-python.sh
   :language: bash

The qiskit script :download:`qiskit_hello_world.py <qiskit_hello_world.py>`

The output output of this script is quite simple

.. jupyter-execute::

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



