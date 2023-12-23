import { PrismaClient } from "@prisma/client"
import { NextResponse } from "next/server"


export async function POST(req,res){

    try{
        let {searchParams} = new URL(req.url)
        const id = parseInt(searchParams.get('id')) 
        // console.log(id);
     
        const prisma = new PrismaClient()
        let result = await prisma.Users.findMany({
            where:{id:id}
        })


            return NextResponse.json({status:"success", data: result})
    }

    catch (e) {
        return NextResponse.json({status:"fail", data:e})
    }
}