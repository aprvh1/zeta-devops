Q: Shell script to take third most CPU & Memory consuming process, this should output to output file with the following properties
    Process Name 
    % CPU  used 
    % Memory used  
    PORT 
    PID

Answer:
ps -aux --sort -pcpu,pmem | sed -n '1,4p'
ps -aux --sort -pcpu,pmem --no-headers | sed -n '3p'

[aprvh4@instance2 ~]$ ps -aux --sort -pcpu,pmem --no-headers | sed -n '3p'
root         4  0.0  0.0      0     0 ?        S<   Jan13   0:00 [kworker/0:0H]