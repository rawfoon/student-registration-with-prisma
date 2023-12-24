import { PrismaClient } from "@prisma/client"
import { NextResponse } from "next/server"


export async function POST(req,res){

    try{
     
        const prisma = new PrismaClient()
        let result = await prisma.user.findMany()


            return NextResponse.json({status:"success", data: result})
    }

    catch (e) {
        return NextResponse.json({status:"fail", data:e})
    }
}