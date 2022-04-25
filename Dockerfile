	
FROM dorowu/ubuntu-desktop-lxde-vnc

RUN apt-get update
RUN apt-get -y install openjdk-11-jdk python3 python3-pip git wget unzip
RUN pip install numpy spicy pandas scikit-learn
RUN git clone https://github.com/aiwolf/AIWolfPy.git
RUN cd AIWolfPy
RUN wget http://aiwolf.org/control-panel/wp-content/uploads/2021/12/aiwolf-ver0.6.3.zip
RUN unzip -j aiwolf-ver0.6.3.zip -d /root/AIWolfPy/
RUN chmod +x AIWolfPy/StartServer.sh
RUN chmod +x AIWolfPy/StartGUIClient.sh
RUN chmod +x AIWolfPy/python_sample.py

COPY script/StartAiWolf.sh /root/Desktop/
