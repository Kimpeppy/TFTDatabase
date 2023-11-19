import Link from 'next/link';



const initialNavigation = [
  { name: 'Team Comps', href: '/dashboard', current: true },
  { name: 'Database', href: '/database', current: false },
  { name: 'Team Builder', href: '/team-builder', current: false },
];

function classNames(...classes: (string | undefined | null | false)[]): string {
  return classes.filter(Boolean).join(' ');
}

export default function Navbar() {

    const [navigation, setNavigation] = React.useState(initialNavigation);

    const handleLinkClick = (clickedIndex: number) => {
        setNavigation((prevNavigation) =>
            prevNavigation.map((item, index) => ({
            ...item,
            current: index === clickedIndex,
            }))
        );
    };
    return (
        <>
            {/*Mobile menu button*/}
            <div className="flex flex-shrink-0 items-center">
                <img
                className="h-8 w-auto"
                src="https://tailwindui.com/img/logos/mark.svg?color=indigo&shade=500"
                alt="Your Company"
                />
            </div>
            {/*Links*/}
            <div className="flex space-x-4">
                {navigation.map((item, index) => (
                    <Link 
                        key = {item.name} 
                        href={item.href} 
                        className={classNames(
                        item.current ? 'bg-gray-900 text-white' : 'text-gray-300 hover:bg-gray-700 hover:text-white',
                        'rounded-md px-3 py-2 text-sm font-medium'
                        )}
                        aria-current={item.current ? 'page' : undefined}
                        onClick={() => handleLinkClick(index)}>
                        {item.name}
                    </Link>
               
                ))}
            </div>
        </>
    );
}
