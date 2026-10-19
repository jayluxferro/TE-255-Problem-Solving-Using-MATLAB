function payable = calculatePayableDailySales(numDrivers, avgSalesPerDriver)
%CALCULATEPAYABLEDAILYSALES  Amount Mr Hanson pays his drivers for one day.
%   Drivers share 30% of the day's total sales. The 30% rate is a GLOBAL
%   constant (per the brief) and is NOT passed in as an argument.
    global DRIVER_RATE %#ok<GVMIS>   % global used per the assignment brief
    totalSales = numDrivers * avgSalesPerDriver;
    payable    = DRIVER_RATE * totalSales;
end
