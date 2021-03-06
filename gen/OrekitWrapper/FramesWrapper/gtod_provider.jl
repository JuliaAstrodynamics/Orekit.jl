function get_eop_history(obj::GTODProvider)
    return jcall(obj, "getEOPHistory", EOPHistory, ())
end

function get_non_interpolating_provider(obj::GTODProvider)
    return jcall(obj, "getNonInterpolatingProvider", GTODProvider, ())
end

function get_transform(obj::GTODProvider, arg0::AbsoluteDate)
    return jcall(obj, "getTransform", Transform, (AbsoluteDate,), arg0)
end

function get_transform(obj::GTODProvider, arg0::FieldAbsoluteDate)
    return jcall(obj, "getTransform", FieldTransform, (FieldAbsoluteDate,), arg0)
end

