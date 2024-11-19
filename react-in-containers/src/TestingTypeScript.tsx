interface Props{
    works: string
}

export function TestingTypeScript({works}: Props){
    return(
       <div>{works}</div>
    )
}