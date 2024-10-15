#!/usr/bin/expect -f

spawn "./anylogic-ple-8.9.0.linux.x86_64.tgz.bin"

expect {
    -re "--More--" { send "\r"; exp_continue }
    -re "Do you accept the license agreement" {
        expect_after 5 {
            spawn xdotool windowactivate --sync $(xdotool search --name AnyLogic)
            expect eof

            spawn xdotool keydown --delay 0 --window $(xdotool getactivewindow) y
            expect eof
            spawn xdotool keyup --delay 0 --window $(xdotool getactivewindow) y
            expect eof
            spawn xdotool keydown --delay 0 --window $(xdotool getactivewindow) es
            expect eof
            spawn xdotool keyup --delay 0 --window $(xdotool getactivewindow) es
            expect eof
        }
        exp_continue
    }
    timeout {
        send_user "Timeout occurred while waiting for license agreement prompt\n"
        exit 1
    }
}

interact
```
#!/bin/bash

LICENSE_TITLE="Software Licensing Agreement for AnyLogic 8.x.x
Document number 20230601"
window_id=$(xdotool search --onlyvisible --name "$LICENSE_TITLE" windowactivate)

for i in {1..460}; do
  xdotool key Return
done

xdotool type "yes"
sleep 5
exec "/opt/anylogic/anylogic.bin" "-vmargs" "-Xmx1024M"
```
