$Fail=0;
$count = 0;
While($true)
{

    function URIGen(){
    $arr ='a','b','c','d','e','f',
        'g','h','i','j','k','l',
        'm','n','o','p','r','s',
        't','u','v','x','y','z',
        '1','2','3','4','5','6',
        '7','8','9','0';

    $pass = "";
        for($i = 0; $i -lt 6; $i++)
        {
        $index = Get-Random -Minimum 0 -Maximum ($arr.Length-1);
        $pass += $arr[$index];
        }
        return $pass;
    }


$URI = URIGen;
Try {wget -Uri (curl https://prnt.sc/$URI).Images[0].src -OutFile "F:\prtscr\$URI.jpg"}
Catch { $Fail += 1;}
$count +=1;
}

