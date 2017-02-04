CC=g++
flags=-std=c++0x -pthread
boost=-I /usr/local/boost_1_63_0
consumers=Consumer.cpp QueuedConsumer.cpp Logging.cpp Ignition/Ignition.cpp Echo.cpp
producers=Producer.cpp Instrumentation.cpp
helpers=Bisem.cpp MessageQueue.cpp
fueling=Fueling/Valve.cpp Fueling/Valve_Control.cpp Fueling/Valve_Interface.cpp
simulator=Testing/Testing_Producer.cpp

all:
	$(CC) $(flags) $(boost) main.cpp $(consumers) $(producers) $(helpers) $(fueling) $(simulator) -o fcmain

debug:
	$(CC) $(flags) $(boost) -g main.cpp $(consumers) $(producers) $(helpers) $(fueling) -o fc_debug

clean:
	rm fcmain fc_debug logfile.txt
