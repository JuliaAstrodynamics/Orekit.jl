function CombinedObservationDataSet(arg0::RinexHeader, arg1::SatelliteSystem, arg2::jint, arg3::AbsoluteDate, arg4::jdouble, arg5::List)
    return CombinedObservationDataSet((RinexHeader, SatelliteSystem, jint, AbsoluteDate, jdouble, List), arg0, arg1, arg2, arg3, arg4, arg5)
end

function get_date(obj::CombinedObservationDataSet)
    return jcall(obj, "getDate", AbsoluteDate, ())
end

function get_header(obj::CombinedObservationDataSet)
    return jcall(obj, "getHeader", RinexHeader, ())
end

function get_observation_data(obj::CombinedObservationDataSet)
    return jcall(obj, "getObservationData", List, ())
end

function get_prn_number(obj::CombinedObservationDataSet)
    return jcall(obj, "getPrnNumber", jint, ())
end

function get_rcvr_clk_offset(obj::CombinedObservationDataSet)
    return jcall(obj, "getRcvrClkOffset", jdouble, ())
end

function get_satellite_system(obj::CombinedObservationDataSet)
    return jcall(obj, "getSatelliteSystem", SatelliteSystem, ())
end

