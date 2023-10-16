while True:
    try:
        n = int(input())
    except:
        break
        
    i = 0
    num = 0
    while True:
        num += 10**i
        if num%n == 0:
            print(i+1)
            break
        else:
            i += 1