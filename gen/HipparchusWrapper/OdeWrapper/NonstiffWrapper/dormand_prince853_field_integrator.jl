function DormandPrince853FieldIntegrator(arg0::Field, arg1::jdouble, arg2::jdouble, arg3::Vector{jdouble}, arg4::Vector{jdouble})
    return DormandPrince853FieldIntegrator((Field, jdouble, jdouble, Vector{jdouble}, Vector{jdouble}), arg0, arg1, arg2, arg3, arg4)
end

function DormandPrince853FieldIntegrator(arg0::Field, arg1::jdouble, arg2::jdouble, arg3::jdouble, arg4::jdouble)
    return DormandPrince853FieldIntegrator((Field, jdouble, jdouble, jdouble, jdouble), arg0, arg1, arg2, arg3, arg4)
end

function get_a(obj::DormandPrince853FieldIntegrator)
    return jcall(obj, "getA", Vector{Vector{RealFieldElement}}, ())
end

function get_b(obj::DormandPrince853FieldIntegrator)
    return jcall(obj, "getB", Vector{RealFieldElement}, ())
end

function get_c(obj::DormandPrince853FieldIntegrator)
    return jcall(obj, "getC", Vector{RealFieldElement}, ())
end

function get_order(obj::DormandPrince853FieldIntegrator)
    return jcall(obj, "getOrder", jint, ())
end

