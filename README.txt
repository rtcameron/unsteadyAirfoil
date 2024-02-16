All commands to run the simulation as a whole should be run from the /background/ folder. The /overset/ folder is simply the overset mesh that gets merged. 

To generate just the mesh, run ./Allrun.pre from /background/. 

To run the simulation in serial, run ./Allrun from /background/.

/background/Allrun.aoa and /background/Allrun.k are different scenarios that loop through some cases and save the data, you don't need to worry about those for testing. 

Any ./Allrun script writes to log files and not command line. 