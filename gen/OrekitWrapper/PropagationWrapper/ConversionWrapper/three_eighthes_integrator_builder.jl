function ThreeEighthesIntegratorBuilder(arg0::jdouble)
    return ThreeEighthesIntegratorBuilder((jdouble,), arg0)
end

function build_integrator(obj::ThreeEighthesIntegratorBuilder, arg0::Orbit, arg1::OrbitType)
    return jcall(obj, "buildIntegrator", AbstractIntegrator, (Orbit, OrbitType), arg0, arg1)
end

