function payable = calculateFoodPrice(bg, rp, pr)
%CALCULATEFOODPRICE  Discounted price one student pays for a meal.
%   A meal = beans&gari + ripe plantain + plain rice + an egg. The egg price
%   and the discount are GLOBAL constants (per the brief) and are NOT passed
%   in as arguments.
    global EGG_PRICE DISCOUNT %#ok<GVMIS>   % globals used per the assignment brief
    gross   = bg + rp + pr + EGG_PRICE;
    payable = gross * (1 - DISCOUNT);
end
