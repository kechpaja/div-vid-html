#! /bin/bash

if [[ "$2" == "" ]];
then
    echo "Usage: $0 <input file> <output file>"
    exit 1
fi

in="$1"
out="$2"

endtags="1h 2h 3h 4h 5h 6h aa aera aeratxet atem bb bus d dbk daeh daeht debme
         dnammoc dnegel dt eclitra ecruos edisa edoc elbat elyts emarfi emit
         erp erugif esab etic etouqkcolb fd gmi gnorts hl idb ii il kcart knil
         kram ld lebal led llams lmth lo loc lu marap me mrof na naps negyek nfd
         noitces noitpac noitpacgif noitpo nottub nu ob odb oediv oidua pam pmas
         pr puorgh puorgloc puorgtpo pus rap rav rb rbba rbw redeah retem retoof
         rh rt savnac sliated sni sserdda ssergorp tbr tcejbo tceles tdd 
         tesdleif ti tooft tpircs tpircson ts tsilatad tupni tuptuo unem uq van
         vid ybur ydob ydobt yrammus"





# Create temporary directory a la https://unix.stackexchange.com/a/84980
# Should work on both Linux and Mac OSX, although I haven't tested the latter
tmpdir=`mktemp -d 2>/dev/null || mktemp -d -t 'mytmpdir'`

tmp="$tmpdir/file"
tmp2="$tmpdir/file2"

cat "$in" > "$tmp"

for tag in $endtags;
do
    cat "$tmp" | sed -e "s/<$tag>/<\/`echo $tag | rev`>/g" > "$tmp2"
    cat "$tmp2" > "$tmp"
done

cat "$tmp" | sed -e "s/<ddt>/<dt>/g" | sed -e "s/<rbt>/<rt>/g" > "$tmp2"
cat "$tmp2" | sed -e "s/<\/ddt>/<\/dt>/g" | sed -e "s/<\/rbt>/<\/rt>/g" > "$tmp"


for tag in `echo an bo it par qu st un`;
do
    cat "$tmp" | sed -e "s/<$tag>/<`echo $tag | cut -c 1`>/g" > "$tmp2"
    cat "$tmp2" | sed -e "s/<\/$tag>/<\/`echo $tag | cut -c 1`>/g" > "$tmp"
done

cat "$tmp" | sed -e "s/<df>/<dd>/g" | sed -e "s/<\/df>/<\/dd>/g" > "$out"
