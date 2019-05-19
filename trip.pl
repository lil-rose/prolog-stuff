price(cuba, 450000).
price(italy, 900000).
price(argentina, 300000).

housing(hotel, cuba, 200000).
housing(hotel, italy, 350000).
housing(hotel, argentina, 100000).

housing(hostel, cuba, 100000).
housing(hostel, italy, 200000).
housing(hostel, argentina, 50000).

housing(camping, cuba, 50000).
housing(camping, italy, 25000).
housing(camping, argentina, 10000).
% C: country, W: weeks, H: housing type, P: price.

trip(C,W,H,P) :- price(C, P_c),
                 housing(H, C, P_h),
                 P is (P_c + P_h * W).

economicTrip(C,W,H,P, P_max) :- price(C, P_c),
                                housing(H, C, P_h),
                                P_aux is (P_c + P_h * W),
                                P_max > P_aux,
                                P is P_aux.