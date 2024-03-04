<?php
namespace App\Http\Middleware;

use Closure;
use Session;

class Trainerlogin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {   
        if(empty(Session::has('trainerSession'))){
            return redirect('/trainer-login');
        }
        return $next($request);
    }
}
