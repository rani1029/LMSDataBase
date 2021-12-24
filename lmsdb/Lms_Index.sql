select * from Hired_Candidates;

select first_name,email,degree

from Hired_Candidates

where communication_remark='Good' AND hired_lab='Devloper';

-- non cluster index

CREATE INDEX in_candidate on Hired_Candidates(communication_remark,hired_lab);


=========================================================================================================================================================
---index on cpulog table

select * from CpuLogData

create  index in_cpu on CpuLogData(cpu_percent,Cpu_Count);

select * from CpuLogData where cpu_percent > 50.0 AND Cpu_Working_Time > 2000.0;

