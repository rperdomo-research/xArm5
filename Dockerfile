FROM osrf/ros2:devel


RUN apt-get update --fix-missing && apt-get install nano && rm -rf /var/lib/apt/lists/*
RUN mkdir "/opt/ros2_ws/src/project_files"
RUN mkdir "/opt/ros2_ws/src/project_files/FTSensor"

ARG src="/RFT/"
ARG dest="/opt/ros2_ws/src/project_files/FTSensor"
#COPY <Address of files to be copied> <Address of place to be copied to in container> API code for force torque (Make available in same folder as dockerfile)
COPY ${src} ${dest}


#CMD download specific python version
#CMD get pyserial
#CMD download pyrealsense API
#CMD download xArm API
#CMD set up github/ clone repo for storage (will it create a slew of clones because different containers?)
