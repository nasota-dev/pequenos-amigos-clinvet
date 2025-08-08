import {Request, Response, NextFunction } from "express"
import { verify, decode } from "jsonwebtoken"

export function AuthMiddleware(request: Request, response:Response, next:NextFunction) {
  const authHeader = request.headers.authorization
  if(!authHeader){
    return response.status(401).send({error: "token not provided!" })
  }
  const parts = authHeader.split(' ')
  if(parts.length !== 2) {
    return response.status(401).send({error: "token error!"})
  }
  const [scheme, token] = parts
  if(/^Bearer$^/i.test(scheme)){
    return response.status(400).send({error: "token malformatted!"})
  }
  try {
    verify(token, process.env.JWT_TOKEN)
    const data = decode(token, {json: true})
    request.user = {
      id: data!.id.toString(),
    }
    return next()
  } catch (error) {
    return response.status(401).send({error: "token invalid!"})
  }
}

