/**
 * Arduino Car Monitor
 *
 * @author Dalmir da Silva <dalmirdasilva@gmail.com>
 */

#ifndef __ARDUINO_CAR_MONITOR_H__
#define __ARDUINO_CAR_MONITOR_H__

class ArduinoCarMonitor {

public:

    /**
     * Public constructor.
     */
    ArduinoCarMonitor();

    void start();

private:

    void readGPSLocation();

    void sendMessage();

    void storeGPSLocation();
};

#endif /* __ARDUINO_CAR_MONITOR_H__ */
