FROM osrf/ros2:devel


RUN apt-get update --fix-missing && apt-get install nano && rm -rf /var/lib/apt/lists/*
RUN mkdir "/opt/ros2_ws/src/project_files"
RUN mkdir "/opt/ros2_ws/src/project_files/FTSensor"

ARG src="/main/packages/RFT/"
ARG dest="/opt/ros2_ws/src/project_files/FTSensor"
#COPY <Address of files to be copied> <Address of place to be copied to in container> API code for force torque (Make available in same folder as dockerfile)
COPY ${src} ${dest}

#RUN download specific python version
#RUN apt-get remove --purge -y python3.12
#CMD pyenv install 3.11.9
#CMD pyenv global 3.11.9
#CMD python3 --version
#RUN apt-get install -y python3.11.9
#python3-pip
#CMD get pyserial

#CMD download pyrealsense API
#CMD download xArm API
RUN git clone https://github.com/xArm-Developer/xArm-Python-SDK.git
RUN cd "xArm-Python-SDK/"

# Need further investigation on CMD/ENTRYPOINT
#CMD python setup.py install
#CMD set up github/ clone repo for storage (will it create a slew of clones because different containers?)
